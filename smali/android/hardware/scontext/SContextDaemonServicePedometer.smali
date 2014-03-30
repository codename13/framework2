.class Landroid/hardware/scontext/SContextDaemonServicePedometer;
.super Ljava/lang/Object;
.source "SContextDaemonServicePedometer.java"

# interfaces
.implements Landroid/hardware/scontext/ISContextDaemonService;


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDaemonServicePedometer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    .line 75
    iget-object v0, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mSContextPedometer:Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextDaemonContexts$SContextPedometerContext;->clear()V

    .line 76
    return-void
.end method

.method public startService(Landroid/content/Context;Landroid/os/Looper;)Z
    .locals 2
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Landroid/hardware/scontext/SContextDaemonServicePedometer;->mLooper:Landroid/os/Looper;

    .line 36
    const-string v0, "SContextDaemonServicePedometer"

    const-string v1, "startService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "SContextDaemonServicePedometer"

    const-string v1, "stopService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public updateContext(ILandroid/hardware/scontext/ISContextDaemonContexts;)V
    .locals 1
    .parameter "event"
    .parameter "scontext"

    .prologue
    .line 79
    invoke-static {}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->getInstance()Landroid/hardware/scontext/SContextDaemonUpdateContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/SContextDaemonUpdateContext;->reportMessage(ILandroid/hardware/scontext/ISContextDaemonContexts;)V

    .line 80
    return-void
.end method
