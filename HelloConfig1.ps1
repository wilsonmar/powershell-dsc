Configuration HelloConfig1 {

    param(
        [string[]]$ComputerName="localhost"
    )
    Node $ComputerName {
        Group GroupExample {
            Ensure = "Present"
            GroupName = "TestGroup"
        }
        User UserExample {
            Ensure = "Present"
            UserName = "TestUser"
            FullName = "TestUser"
            DependsOn = "[Group]GroupExample"
        }
    }
}
