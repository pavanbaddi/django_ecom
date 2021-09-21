import uuid

def file_upload( file, path='media/uploads' ):

    info = {
        'success' : False,
        'path' : None,
    }

    if file:

        random = uuid.uuid4()
        extension = file.content_type.split("/")[1]
        new_file_name = f"{random}.{extension}"
        destination_path = f"C:/Users/pavan/Desktop/python/ecom/{path}/{new_file_name}"

        with open(destination_path, 'wb+') as destination:
            for chunk in file.chunks():
                destination.write(chunk)

        info["success"] = True
        info["path"] = new_file_name

    return info