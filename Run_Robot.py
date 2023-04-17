from robot import run_cli as robot_run
from robot import run as robot_run1

# python -m robotide.__init__

reports_folder = 'C://Praveen/Robot_framework//reports'
robot_tag = 'TestSuites/'
arguments = (
    f"-d {reports_folder} {robot_tag}"
)
#
# test_name = None
# robot_file = r'Robot_files/test.robot'
# reports_folder = r'C:/Praveen/Robot_framework/reports'


def main():
    # print(arguments)
    # robot_run(['--name', 'MyFirstTest', '-d', f'{reports_folder}', 'Robot_files/test.robot'])
    robot_run(arguments.split(' '))
    # robot_run1('.',)


if __name__ == "__main__":
    main()
