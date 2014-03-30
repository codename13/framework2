.class public Lcom/samsung/bluetoothle/BluetoothLEGattProxy;
.super Ljava/lang/Object;
.source "BluetoothLEGattProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLEGattProxy.LE"

.field private static mBluetoothService:Landroid/bluetooth/IBluetooth;


# instance fields
.field public mCallback:Landroid/bluetooth/IBluetoothLEGattCallback;

.field private mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

.field private final mLEClientServiceCBTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDeviceAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/bluetooth/IBluetooth;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    .line 262
    new-instance v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;

    invoke-direct {v1, p0}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;-><init>(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)V

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mCallback:Landroid/bluetooth/IBluetoothLEGattCallback;

    .line 64
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "BluetoothLEGattProxy Constructor"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-object p1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;

    .line 70
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mCallback:Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->registerGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Failed to initialize/register callbacks with Obex server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 368
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;

    return-object v0
.end method

.method private getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "objPath"

    .prologue
    .line 220
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "getAddressFromObjectPath"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getAddressFromObjectPathForLE(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Failed to call getAddressFromObjectPath on BluetothService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;
    .locals 4

    .prologue
    .line 51
    const-class v2, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    monitor-enter v2

    .line 52
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_1

    .line 53
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    sput-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 59
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    new-instance v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    sget-object v2, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    invoke-direct {v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;-><init>(Landroid/bluetooth/IBluetooth;)V

    return-object v1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 89
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "connect()"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 93
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->gattDeviceConnect(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call connect failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 107
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "disconnect()"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 111
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->gattDeviceDisconnect(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call disconnect failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "address"
    .parameter "servicPath"
    .parameter "charUUID"

    .prologue
    .line 140
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "gattCharacteristicsDiscovery()"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 144
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/bluetooth/IBluetooth;->gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call gattCharacteristicsDiscovery failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "address"
    .parameter "charPath"

    .prologue
    .line 157
    const-string v1, "BluetoothLEGattProxy.LE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gattGetCharacteristicsValue() Charpath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 160
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call gattGetCharacteristicsValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "address"
    .parameter "type"
    .parameter "charPath"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 177
    const-string v0, "BluetoothLEGattProxy.LE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gattCharSetProperty() Charpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 181
    :try_start_0
    sget-object v0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v6

    .line 183
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "BluetoothLEGattProxy.LE"

    const-string v1, "Call gattCharSetProperty failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRssiValue(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 123
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "getRssiValue()"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 126
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->getRssiValue(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call getRssiValue failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerLEProfile(Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 234
    const-string v0, "BluetoothLEGattProxy.LE"

    const-string v1, "registerLEProfile()"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    .line 237
    return-void
.end method

.method public registerLEServiceCallback(Ljava/lang/String;Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;)V
    .locals 2
    .parameter "servicePath"
    .parameter "callBack"

    .prologue
    .line 258
    const-string v0, "BluetoothLEGattProxy.LE"

    const-string v1, "Praveen registerLEServiceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public registerWatcher(Ljava/lang/String;)Z
    .locals 3
    .parameter "servicePath"

    .prologue
    .line 194
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "registerWatcher"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->gattRegisterCharWatcher(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 201
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call registerCharacteristicsWatcher failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRemoteDeviceAddress(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 78
    const-string v0, "BluetoothLEGattProxy.LE"

    const-string v1, "setRemoteDeviceAddress()"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public unregisterLEProfile()V
    .locals 3

    .prologue
    .line 243
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "unregisterLEProfile()"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    .line 248
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mCallback:Landroid/bluetooth/IBluetoothLEGattCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->unregisterGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Failed to unregister callbacks with Obex server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterWatcher(Ljava/lang/String;)Z
    .locals 3
    .parameter "servicePath"

    .prologue
    .line 209
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "unregisterNotification"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    sget-object v1, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->gattUnregisterCharWatcher(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 216
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call unregisterCharacteristicsWatcher failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method
