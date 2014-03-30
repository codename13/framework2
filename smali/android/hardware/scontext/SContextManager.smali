.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_SCONTEXT_EVENT:Ljava/lang/String; = "android.hardware.scontext.SCONTEXT_EVENT"

.field public static final APPROACH:I = 0x1

.field public static final LOCATION:I = 0x3

.field public static final MOTION:I = 0x2

.field public static final MOTION_PICKUP:I = 0x1

.field public static final MOTION_PUTDOWN:I = 0x2

.field public static final MOTION_UNKNOWN:I = 0x0

.field public static final NONE:I = 0x0

.field public static final PEDOMETER:I = 0x5

.field public static final STEPCOUNT_ALERT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SContextManager"

.field public static final ZONE:I = 0x4

.field public static final ZONE_ENTER:I = 0x1

.field public static final ZONE_EXIT:I = 0x2

.field public static final ZONE_UNKNOWN:I


# instance fields
.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "mainLooper"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/ArrayList;

    .line 66
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 68
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 69
    return-void
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .parameter "service"

    .prologue
    .line 101
    if-gtz p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 1
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 1
    .parameter "listener"
    .parameter "service"
    .parameter "stepcount"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IILandroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "service"
    .parameter "stepcount"
    .parameter "handler"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)Z
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 95
    return-void
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 98
    return-void
.end method
