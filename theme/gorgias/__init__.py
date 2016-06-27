import os



def get_path():
    """
    Shortcut for users whose theme is next to their conf.py.
    """
    # Theme directory is defined as our parent directory
    return os.path.abspath(os.path.dirname(os.path.dirname(__file__)))

def setup(app):
    return {'version': '0.0.1',
            'parallel_read_safe': True}
