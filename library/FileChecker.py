import os
import time
import glob

def wait_for_download(downloads_folder, file_to_download, timeout=600, poll_interval=5):
    file_path = os.path.join(downloads_folder, file_to_download)

    start_time = time.time()
    while not os.path.exists(file_path):
        if time.time() - start_time > timeout:
            raise Exception(f"File '{file_to_download}' not found after {timeout} seconds")
        time.sleep(poll_interval)

    return True

def delete_file(downloads_folder, file_to_delete):
    file_path = os.path.join(downloads_folder, file_to_delete)
    if os.path.exists(file_path):
        os.remove(file_path)
        return True
    else:
        return False

def wait_for_matching_files(downloads_folder, filename_pattern, timeout=600, poll_interval=5):
    while True:
        matching_files = glob.glob(os.path.join(downloads_folder, filename_pattern))
        if len(matching_files) > 0:
            file_path = matching_files[0]
            if wait_for_download(downloads_folder, file_path, timeout, poll_interval):
                return file_path
        else:
            time.sleep(poll_interval)

def get_matching_files(folder):
    files = glob.glob(f"{folder}")
    return files

def delete_files(directory, file_pattern):
    files_to_delete = glob.glob(os.path.join(directory, file_pattern))
    for file in files_to_delete:
        os.remove(file)
