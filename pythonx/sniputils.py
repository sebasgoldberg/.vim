
def params_from_deps(deps, prefix=''):
    """
    TODO Is not working 100%
    """
    if not deps:
        return ''
    _deps = deps.split(',')
    params = []
    for dep in _deps:
        dep = dep.strip().strip('"').strip("'")
        if dep.find('/') >= 0:
            param = dep.split('/')[-1]
        elif dep.find('.') >= 0:
            param = dep.split('.')[-1]
        else:
            param = dep.strip()
        if param:
            params.append(param)
    if params:
        return prefix+', '.join(params)
    return ''


import unittest

class TestParamsFromDeps(unittest.TestCase):

    def test_empty(self):
        self.assertEqual(params_from_deps(''),'')

    def test_path(self):
        self.assertEqual(params_from_deps('"my/path/to/file"', prefix=', '),', file')

    def test_package(self):
        self.assertEqual(params_from_deps('"my.package.to.file"', prefix=', '),', file')

    def test_endded_with_coma(self):
        self.assertEqual(params_from_deps('"my.package.to.file",', prefix=', '),', file')

    def test_multiple_and_mixed(self):
        self.assertEqual(params_from_deps('"my/path/to/file1",\n"my.package.to.file2",', prefix=', '),', file1, file2')

    def test_no_prefix(self):
        self.assertEqual(params_from_deps('"my/path/to/file1",\n"my.package.to.file2",'),'file1, file2')

if __name__ == '__main__':
    unittest.main()
