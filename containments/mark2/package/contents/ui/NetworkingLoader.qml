/*
 *  Copyright 2019 Marco Martin <mart@kde.org>
 *  Copyright 2018 by Aditya Mehra <aix.m@outlook.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.5 as Kirigami
import Mycroft.Private.Mark2SystemAccess 1.0

StackView {
    id: networkingLoader
    property var securityType
    property var connectionName
    property var devicePath
    property var specificPath
    visible: Mark2SystemAccess.networkConfigurationVisible
    enabled: Mark2SystemAccess.networkConfigurationVisible
    onEnabledChanged: {
        networkingLoader.clear()
        if(Mark2SystemAccess.networkConfigurationVisible) {
            networkingLoader.push(Qt.resolvedUrl("./networking/SelectNetwork.qml"))
        }
    }
}
