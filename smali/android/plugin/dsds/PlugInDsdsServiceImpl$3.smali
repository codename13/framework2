.class Landroid/plugin/dsds/PlugInDsdsServiceImpl$3;
.super Ljava/lang/Thread;
.source "PlugInDsdsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchToSim1DataNetwork(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/plugin/dsds/PlugInDsdsServiceImpl;


# direct methods
.method constructor <init>(Landroid/plugin/dsds/PlugInDsdsServiceImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$3;->this$0:Landroid/plugin/dsds/PlugInDsdsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, result:Z
    iget-object v1, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$3;->this$0:Landroid/plugin/dsds/PlugInDsdsServiceImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->setPreferredDataSubscription(I)Z

    move-result v0

    .line 726
    if-nez v0, :cond_0

    .line 727
    const-string v1, "plugin"

    const-string v2, "setPreferredDataSubscription() error!! pleas fix this!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    return-void
.end method
