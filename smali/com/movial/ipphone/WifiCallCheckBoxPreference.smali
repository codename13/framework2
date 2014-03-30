.class public Lcom/movial/ipphone/WifiCallCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "WifiCallCheckBoxPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallCheckBoxPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$1;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 91
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/movial/ipphone/IPManager;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    return-object v0
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .parameter "register"

    .prologue
    .line 145
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;Z)V

    .line 157
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 121
    const-string v0, "WifiCallCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 124
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    iget-boolean v4, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    invoke-static {v0, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 125
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 142
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    invoke-static {v0, v3, v1}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 134
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 138
    return-void

    :cond_1
    move v0, v2

    .line 134
    goto :goto_0

    :cond_2
    move v0, v2

    .line 136
    goto :goto_1

    :cond_3
    move v1, v2

    .line 137
    goto :goto_2
.end method

.method public setValues(Landroid/preference/Preference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    .line 130
    return-void
.end method
