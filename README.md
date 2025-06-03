# 📱 Delicake

**Delicake** é um aplicativo de marketplace para confeitarias, desenvolvido com Flutter e  faz parte do desafio da vaga de estágio em dart/flutter da empresa Engeselt Softwares.  
Permite o cadastro, edição e visualização de confeitarias e seus produtos, além da exibição das localizações em mapa.

---

## ✨ Funcionalidades

- Cadastro e edição de **confeitarias** com informações como nome, telefone, endereço e localização.
- Cadastro de **produtos** associados às confeitarias.
- Upload de **múltiplas imagens** para os produtos.
- Visualização das confeitarias em uma **lista** e em um **mapa**.
- Banco de dados **local** utilizando Drift (SQLite).

---

## 🛠 Tecnologias utilizadas

- **Flutter** (Dart)
- **Drift** (SQLite para persistência local)
- **Geocoding** (conversão de endereço em coordenadas)
- **Flutter Maps** (exibição de mapa)
- **Image Picker** (para seleção de imagens)
- **BLoC** (separar a UI das regras de negócio)

---

## 🚀 Como instalar e executar o projeto

1. **Clone o repositório**

```bash
git clone https://github.com/Pedr0Henriq/delicake.git
cd delicake
```

2. **Instale as dependências**

```bash
flutter pub get
```

3. **Instale o drift**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Execute o projeto**

```bash
flutter run
```

---

## ⚙️ Configurações específicas

### Android

- Permissões necessárias:

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
```

### iOS

- No arquivo `ios/Runner/Info.plist`, adicione:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>Precisamos da sua localização para exibir confeitarias próximas no mapa.</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Precisamos da sua localização para exibir confeitarias próximas no mapa.</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>Precisamos de acesso à sua galeria para selecionar imagens dos produtos.</string>
```

---

## 📂 Estrutura de Pastas

```
lib/
├── main.dart         # Arquivo principal
├── models/           # Modelos de dados
├── database/         # Tabelas e DAOs usando Drift
├── ui/      # Telas do aplicativo
│    ├── _core/      # Cores do aplicativo
│    ├── home/
│    ├── confeitaria/
│    ├── sign_up/    
│    └── principal/
```

---

## 🎨 Protótipo

Veja o protótipo do aplicativo no Canva:  
**[Link para o Protótipo](https://www.canva.com/design/DAGk28wBom0/L2u5WXwzHGjPT-oVfy92Kw/edit?utm_content=DAGk28wBom0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)**

---

