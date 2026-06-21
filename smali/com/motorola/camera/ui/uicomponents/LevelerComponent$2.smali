.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;
.super Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1, p1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 10

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    if-ne p1, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb4

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsCamAlignedSensor:Z

    if-eqz v1, :cond_2

    rsub-int p1, p1, 0x168

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsDisplayRotation:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 p1, v1, 0x168

    :cond_3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPlanar:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_LEVELER_ANTI_DITHER:Z

    const/high16 v4, 0x43b40000    # 360.0f

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationPool:[I

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationSize:I

    if-nez v5, :cond_4

    move v9, p1

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationIndex:I

    add-int/lit8 v6, v5, -0x1

    if-gez v6, :cond_5

    add-int/lit8 v6, v5, 0x9

    :cond_5
    aget v5, v1, v6

    sub-int v6, p1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit16 v7, p1, 0x168

    sub-int v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/lit16 v9, p1, -0x168

    sub-int v5, v9, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v6, v8, :cond_6

    move v7, p1

    goto :goto_1

    :cond_6
    move v6, v8

    :goto_1
    if-ge v5, v6, :cond_7

    goto :goto_2

    :cond_7
    move v9, v7

    :goto_2
    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationIndex:I

    aput v9, v1, v5

    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationSize:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_8

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationSize:I

    :cond_8
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationIndex:I

    if-lt v5, v7, :cond_9

    iput v2, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationIndex:I

    :cond_9
    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerRotationSize:I

    if-ge v2, v6, :cond_a

    aget v6, v1, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    int-to-float v1, v6

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    rem-float/2addr v5, v4

    goto :goto_4

    :cond_b
    int-to-float v5, p1

    :goto_4
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_LEVELER_ANTI_DITHER:Z

    if-eqz v1, :cond_c

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->-$$Nest$mgetFilterOrientation(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)I

    move-result p1

    goto :goto_5

    :cond_c
    sub-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    :goto_5
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isFoldFullScreen()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mFoldGapOrientation:I

    int-to-float v1, v0

    add-float/2addr v5, v1

    rem-float/2addr v5, v4

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    :cond_d
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    invoke-virtual {p0, v5, p1}, Lcom/motorola/camera/ui/widgets/LevelerView;->setLevelOrientation(FI)V

    :cond_e
    :goto_6
    return-void
.end method

.method public final onPlanarPositionChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mPlanar:Z

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float p1, p0

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->setLevelOrientation(FI)V

    return-void

    :cond_1
    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->-$$Nest$mgetFilterOrientation(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;I)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    int-to-float p0, p0

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/LevelerView;->setLevelOrientation(FI)V

    return-void
.end method
