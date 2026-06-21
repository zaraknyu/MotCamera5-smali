.class public final Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;
.super Lcom/motorola/camera/Controller$2;
.source "SourceFile"


# instance fields
.field public mPlanar:Z

.field public final synthetic this$0:Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->this$0:Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/Controller$2;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->mPlanar:Z

    return-void
.end method


# virtual methods
.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v1, p1, v0

    neg-float v1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    neg-float v3, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    neg-float p1, p1

    mul-float v4, v1, v1

    mul-float v5, v3, v3

    add-float/2addr v5, v4

    mul-float/2addr p1, p1

    iget-boolean v4, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->mPlanar:Z

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v5

    cmpl-float v6, v6, p1

    if-ltz v6, :cond_3

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    neg-float p1, v3

    float-to-double v2, p1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p1, v1

    const v1, 0x42652ee1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5a

    :goto_1
    const/16 v1, 0x168

    if-lt p1, v1, :cond_1

    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x168

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    if-nez v4, :cond_4

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v5, v1

    cmpg-float p1, v5, p1

    if-gez p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v0

    move v2, v4

    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->this$0:Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;

    iget v1, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    if-eq p1, v1, :cond_5

    iput p1, v0, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->mOrientation:I

    invoke-virtual {v0, p1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->onOrientationChanged(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->mPlanar:Z

    if-eq v2, p1, :cond_6

    iput-boolean v2, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->mPlanar:Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;->onPlanarPositionChanged(Z)V

    :cond_6
    return-void
.end method

.method public final resetPlanarFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/shared/OrientationEventListener$GravitySensorEventListenerImpl;->mPlanar:Z

    return-void
.end method
