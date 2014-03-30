.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$1;,
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupwindow"

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2


# instance fields
.field private final ID_TOOLTIP_VIEW:I

.field protected final MARGIN_FOR_HOVER_RING:I

.field protected mAnimationStyle:I

.field protected mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field protected mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field protected mEnabled:Z

.field protected mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field protected mGuideRingDrawableId:I

.field private mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

.field protected mHoverDetectTimeMS:I

.field protected mHoveringPointX:I

.field protected mHoveringPointY:I

.field protected mIsGuideLineEnabled:Z

.field protected mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field protected final mParentView:Landroid/view/View;

.field protected mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field protected mPopupOffsetX:I

.field protected mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parentView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .parameter "parentView"
    .parameter "type"

    .prologue
    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 71
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 141
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 143
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 145
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 146
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 147
    return-void
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method private dismissPopup()V
    .locals 2

    .prologue
    .line 918
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 923
    :cond_0
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupHandler;-><init>(Landroid/widget/HoverPopupWindow;Landroid/widget/HoverPopupWindow$1;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    .line 938
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    return-object v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 364
    :goto_0
    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7010001

    .line 487
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 489
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 502
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 495
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 496
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109004c

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 497
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setHoverPopupType(I)V

    .line 498
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 500
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPopupContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 440
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v3, :pswitch_data_0

    .line 464
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 469
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v3, v4, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 473
    :cond_1
    return-void

    .line 442
    :pswitch_0
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 445
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 448
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 451
    :pswitch_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 452
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 455
    .local v1, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 456
    .local v2, v:Landroid/view/View;
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    .end local v2           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 458
    .local v0, ie:Landroid/view/InflateException;
    iput-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 407
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 408
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    .line 409
    return-void
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 32
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offX"
    .parameter "offY"

    .prologue
    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 789
    :goto_0
    return-void

    .line 518
    :cond_0
    move/from16 v27, p3

    .line 519
    .local v27, posX:I
    move/from16 v28, p4

    .line 520
    .local v28, posY:I
    if-eqz p1, :cond_7

    move-object/from16 v10, p1

    .line 521
    .local v10, anchorView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    .line 524
    .local v22, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v2, 0x2

    new-array v8, v2, [I

    .line 525
    .local v8, anchorLocOnScr:[I
    invoke-virtual {v10, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 526
    new-instance v9, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    const/4 v4, 0x0

    aget v4, v8, v4

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    const/4 v7, 0x1

    aget v7, v8, v7

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v31

    add-int v7, v7, v31

    invoke-direct {v9, v2, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 531
    .local v9, anchorRect:Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 532
    .local v21, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 537
    invoke-virtual {v10}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 538
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 539
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 540
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 541
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 551
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_8

    .line 552
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 554
    .local v30, widthMeasureSpec:I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 577
    .local v24, heightMeasureSpec:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 579
    .local v20, contentWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 581
    .local v18, contentHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 589
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xf0f

    move/from16 v23, v0

    .line 590
    .local v23, hGravity:I
    const v2, 0xf0f0

    and-int v29, p2, v2

    .line 592
    .local v29, vGravity:I
    if-nez p2, :cond_b

    .line 594
    move/from16 v27, p3

    .line 595
    move/from16 v28, p4

    .line 675
    :goto_3
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v2, v20

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 676
    const/4 v2, 0x0

    move/from16 v0, v27

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 678
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v28

    if-ge v0, v2, :cond_d

    .line 680
    const/16 v2, 0x3030

    move/from16 v0, v29

    if-ne v0, v2, :cond_c

    .line 681
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 682
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int v28, v28, v2

    .line 700
    :cond_2
    :goto_4
    const/4 v11, 0x0

    .line 701
    .local v11, canDraw:Z
    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v18

    move/from16 v0, v28

    if-le v0, v2, :cond_3

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v28

    if-lt v0, v2, :cond_4

    .line 702
    :cond_3
    const/4 v11, 0x1

    .line 705
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v2, :cond_14

    if-eqz v11, :cond_14

    .line 707
    const/16 v25, 0x1

    .line 709
    .local v25, isPopupAboveHorizontal:Z
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(ILandroid/util/DisplayMetrics;)I

    move-result v26

    .line 713
    .local v26, marginForHoverRing:I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v26

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 715
    .local v12, containerLeftOnWindow:I
    add-int v2, v27, v20

    iget v3, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v3, v26

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 720
    .local v17, containerRightOnWindow:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    move/from16 v0, v28

    if-le v0, v2, :cond_f

    .line 721
    const/16 v25, 0x0

    .line 727
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v2, :cond_5

    .line 728
    new-instance v2, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 734
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 735
    .local v19, contentLP:Landroid/view/ViewGroup$LayoutParams;
    if-nez v19, :cond_10

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 745
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 749
    sub-int v2, v12, v27

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 750
    .local v14, containerPaddingLeft:I
    add-int v2, v27, v20

    sub-int v2, v17, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 751
    .local v15, containerPaddingRight:I
    const/16 v16, 0x0

    .line 752
    .local v16, containerPaddingTop:I
    const/4 v13, 0x0

    .line 753
    .local v13, containerPaddingBottom:I
    if-eqz v25, :cond_11

    .line 754
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v26

    add-int v3, v28, v18

    sub-int v13, v2, v3

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3, v15, v13}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 762
    :goto_7
    if-eqz v25, :cond_12

    .line 763
    move/from16 v27, v12

    .line 772
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v5, v2, v27

    .line 773
    .local v5, hoverPointXonContainer:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v6, v2, v28

    .line 774
    .local v6, hoverPointYonContainer:I
    if-eqz v25, :cond_13

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v3, v20, 0x2

    add-int/2addr v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v4, v18, v4

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    .line 787
    .end local v5           #hoverPointXonContainer:I
    .end local v6           #hoverPointYonContainer:I
    .end local v12           #containerLeftOnWindow:I
    .end local v13           #containerPaddingBottom:I
    .end local v14           #containerPaddingLeft:I
    .end local v15           #containerPaddingRight:I
    .end local v16           #containerPaddingTop:I
    .end local v17           #containerRightOnWindow:I
    .end local v19           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v25           #isPopupAboveHorizontal:Z
    .end local v26           #marginForHoverRing:I
    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 788
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    goto/16 :goto_0

    .line 520
    .end local v8           #anchorLocOnScr:[I
    .end local v9           #anchorRect:Landroid/graphics/Rect;
    .end local v10           #anchorView:Landroid/view/View;
    .end local v11           #canDraw:Z
    .end local v18           #contentHeight:I
    .end local v20           #contentWidth:I
    .end local v21           #displayFrame:Landroid/graphics/Rect;
    .end local v22           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v23           #hGravity:I
    .end local v24           #heightMeasureSpec:I
    .end local v29           #vGravity:I
    .end local v30           #widthMeasureSpec:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 557
    .restart local v8       #anchorLocOnScr:[I
    .restart local v9       #anchorRect:Landroid/graphics/Rect;
    .restart local v10       #anchorView:Landroid/view/View;
    .restart local v21       #displayFrame:Landroid/graphics/Rect;
    .restart local v22       #displayMetrics:Landroid/util/DisplayMetrics;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_9

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 566
    .restart local v30       #widthMeasureSpec:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_a

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24       #heightMeasureSpec:I
    goto/16 :goto_2

    .line 561
    .end local v24           #heightMeasureSpec:I
    .end local v30           #widthMeasureSpec:I
    :cond_9
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .restart local v30       #widthMeasureSpec:I
    goto :goto_a

    .line 570
    :cond_a
    move-object/from16 v0, v22

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24       #heightMeasureSpec:I
    goto/16 :goto_2

    .line 599
    .restart local v18       #contentHeight:I
    .restart local v20       #contentWidth:I
    .restart local v23       #hGravity:I
    .restart local v29       #vGravity:I
    :cond_b
    sparse-switch v23, :sswitch_data_0

    .line 637
    move/from16 v27, p3

    .line 642
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    add-int v27, v27, v2

    .line 646
    sparse-switch v29, :sswitch_data_1

    .line 663
    move/from16 v28, p4

    .line 668
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    add-int v28, v28, v2

    goto/16 :goto_3

    .line 601
    :sswitch_0
    iget v2, v9, Landroid/graphics/Rect;->left:I

    sub-int v27, v2, v20

    .line 602
    goto :goto_b

    .line 605
    :sswitch_1
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    .line 606
    goto :goto_b

    .line 609
    :sswitch_2
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v27, v2, v20

    .line 610
    goto :goto_b

    .line 613
    :sswitch_3
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v20, 0x2

    sub-int v27, v2, v3

    .line 614
    goto :goto_b

    .line 617
    :sswitch_4
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v27

    .line 618
    goto :goto_b

    .line 621
    :sswitch_5
    iget v2, v9, Landroid/graphics/Rect;->right:I

    sub-int v27, v2, v20

    .line 622
    goto :goto_b

    .line 625
    :sswitch_6
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    .line 626
    goto :goto_b

    .line 629
    :sswitch_7
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, v20, 0x2

    sub-int v27, v2, v3

    .line 630
    goto :goto_b

    .line 633
    :sswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    div-int/lit8 v3, v20, 0x2

    sub-int v27, v2, v3

    .line 634
    goto :goto_b

    .line 648
    :sswitch_9
    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int v28, v2, v18

    .line 649
    goto :goto_c

    .line 651
    :sswitch_a
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    .line 652
    goto :goto_c

    .line 654
    :sswitch_b
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v18, 0x2

    sub-int v28, v2, v3

    .line 655
    goto :goto_c

    .line 657
    :sswitch_c
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v28, v2, v18

    .line 658
    goto :goto_c

    .line 660
    :sswitch_d
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    .line 661
    goto :goto_c

    .line 684
    :cond_c
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v28

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_4

    .line 686
    :cond_d
    add-int v2, v28, v18

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    .line 688
    const/16 v2, 0x5050

    move/from16 v0, v29

    if-ne v0, v2, :cond_e

    .line 689
    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int v28, v2, v18

    .line 690
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    sub-int v28, v28, v2

    goto/16 :goto_4

    .line 692
    :cond_e
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v18

    move/from16 v0, v28

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    goto/16 :goto_4

    .line 723
    .restart local v11       #canDraw:Z
    .restart local v12       #containerLeftOnWindow:I
    .restart local v17       #containerRightOnWindow:I
    .restart local v25       #isPopupAboveHorizontal:Z
    .restart local v26       #marginForHoverRing:I
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 738
    .restart local v19       #contentLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 739
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    .line 757
    .restart local v13       #containerPaddingBottom:I
    .restart local v14       #containerPaddingLeft:I
    .restart local v15       #containerPaddingRight:I
    .restart local v16       #containerPaddingTop:I
    :cond_11
    iget v2, v9, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v26

    sub-int v16, v28, v2

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v0, v15, v3}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_7

    .line 766
    :cond_12
    move/from16 v27, v12

    .line 767
    sub-int v28, v28, v16

    goto/16 :goto_8

    .line 779
    .restart local v5       #hoverPointXonContainer:I
    .restart local v6       #hoverPointYonContainer:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v3, v20, 0x2

    add-int/2addr v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v4, v4, v16

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    goto/16 :goto_9

    .line 784
    .end local v5           #hoverPointXonContainer:I
    .end local v6           #hoverPointYonContainer:I
    .end local v12           #containerLeftOnWindow:I
    .end local v13           #containerPaddingBottom:I
    .end local v14           #containerPaddingLeft:I
    .end local v15           #containerPaddingRight:I
    .end local v16           #containerPaddingTop:I
    .end local v17           #containerRightOnWindow:I
    .end local v19           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v25           #isPopupAboveHorizontal:Z
    .end local v26           #marginForHoverRing:I
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_9

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 646
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method protected convertDPtoPX(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .parameter "dp"
    .parameter "displayMetrics"

    .prologue
    .line 929
    if-nez p2, :cond_0

    .line 930
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 932
    :cond_0
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 418
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 420
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 421
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 422
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 423
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 424
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 910
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 350
    :goto_0
    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 155
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 157
    const/16 v0, 0x3031

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 158
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 159
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 160
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 161
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 162
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 163
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 165
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 166
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 167
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/widget/HoverPopupWindow$HoverPopupHandler;

    .line 168
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 169
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 170
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 171
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 172
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 174
    const v0, 0x10802b9

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 175
    const v0, -0x635d57

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 176
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x1

    .line 198
    .local v0, ret:Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 199
    const/4 v0, 0x0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 201
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 205
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 481
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 884
    .local v0, action:I
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 887
    iget-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 889
    .local v1, popupView:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 893
    check-cast v1, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .end local v1           #popupView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 897
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "aniStyle"

    .prologue
    .line 847
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 848
    return-void
.end method

.method public setContent(I)V
    .locals 0
    .parameter "resId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 249
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "view"
    .parameter "lp"

    .prologue
    .line 268
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 269
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 270
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 279
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 280
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 215
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 857
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 858
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 868
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .parameter "ringDrawable"
    .parameter "lineColor"

    .prologue
    .line 874
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 875
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 876
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 318
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 319
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 239
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 339
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 340
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 341
    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 183
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 184
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 185
    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 186
    const v0, 0x10301df

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 188
    :cond_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 309
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 310
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 328
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 329
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 330
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 370
    return-void
.end method

.method public show(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 381
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v0, :cond_2

    .line 385
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 386
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 390
    :cond_2
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateHoverPopup()V
    .locals 4

    .prologue
    .line 795
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 796
    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 802
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 803
    const-string v0, "HoverPopupwindow"

    const-string v1, "updateHoverPopup(), returned dueto mPopup==null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 811
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 817
    :goto_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 818
    const-string v0, "HoverPopupwindow"

    const-string v1, "updateHoverPopup(), returns dueto mPopup.getContentView()==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 823
    :cond_2
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 825
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 829
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 830
    const-string v0, "HoverPopupwindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent view may be on sub-panel window, popup will be attached with Application Token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 835
    :cond_4
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
