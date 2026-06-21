.class public abstract Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mPressedStateDuration:I

.field public static final mTapTimeout:I


# instance fields
.field public final mDragOrigin:Landroid/graphics/PointF;

.field public mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mEventTime:J

.field public mFlags:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasPerformedDrag:Z

.field public mHasPerformedLongPress:Z

.field public mInitialTouchSlop:F

.field public final mLastRawTouchLoc:Landroid/graphics/PointF;

.field public mLongPressTimeout:I

.field public mOnDownTime:J

.field public mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public mPressedState:I

.field public final mRawTouchLoc:Landroid/graphics/PointF;

.field public final mTouchOffset:Landroid/graphics/PointF;

.field public final mTouchSlop:F

.field public mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final mTouchUp:Landroid/graphics/PointF;

.field public mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

.field public performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedStateDuration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchOffset:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v6, v3, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x4

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v5, :cond_5

    move v10, v5

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    and-int/2addr v9, v7

    if-ne v9, v7, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-nez v4, :cond_7

    if-nez v6, :cond_7

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    new-instance v11, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchOffset:Landroid/graphics/PointF;

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLastRawTouchLoc:Landroid/graphics/PointF;

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mDragOrigin:Landroid/graphics/PointF;

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_23

    move/from16 v17, v8

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    if-eq v1, v5, :cond_14

    if-eq v1, v7, :cond_e

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    :cond_9
    if-nez v9, :cond_a

    if-eqz v10, :cond_c

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v6, 0x6

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_b
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_d

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v3, 0x7

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_d
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v5

    :cond_e
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v1

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchSlop:F

    neg-float v8, v7

    invoke-virtual {v1, v8, v8}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    iget v8, v11, Landroid/graphics/PointF;->x:F

    iget v10, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v8, v10}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v23

    if-nez v23, :cond_11

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    if-eqz v9, :cond_10

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-eqz v1, :cond_f

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateDrawableState()V

    :cond_10
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    :cond_11
    if-eqz v3, :cond_28

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-nez v1, :cond_13

    if-nez v4, :cond_12

    if-eqz v6, :cond_13

    :cond_12
    iget v1, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    float-to-double v3, v7

    cmpl-double v1, v1, v3

    if-lez v1, :cond_28

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget v2, v13, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, v13, Landroid/graphics/PointF;->y:F

    iget v4, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v15, Landroid/graphics/PointF;->x:F

    iget v4, v15, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v4, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iget-wide v6, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    move-object v8, v0

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v8, v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v15, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    move-wide/from16 v21, v6

    move-object/from16 v16, v14

    move-object v14, v8

    invoke-virtual/range {v14 .. v23}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    return v5

    :cond_14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_15

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v3, 0x7

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_15
    if-nez v9, :cond_19

    if-eqz v10, :cond_16

    goto :goto_7

    :cond_16
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, 0x4

    move/from16 v3, v17

    if-ne v1, v3, :cond_1f

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    goto :goto_6

    :cond_17
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-eqz v1, :cond_18

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_18
    :goto_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_19
    :goto_7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->removeTapCallback()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-eqz v1, :cond_1a

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1a
    if-eqz v4, :cond_1d

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-nez v1, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v6, 0x4

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_1b
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPerformSingleTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->postEndLongPressRunnable(J)V

    :cond_1d
    :goto_8
    if-eqz v10, :cond_1e

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    or-int/2addr v1, v7

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateDrawableState()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedStateDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_1e
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_9
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    if-eqz v1, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_20

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_20
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndDrag:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v1, :cond_22

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v6, 0x6

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_22
    iput-wide v3, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchUp:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Touch Up"

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    return v5

    :cond_23
    move-object v1, v14

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mUnsetPressedState:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-eqz v4, :cond_24

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_24
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mInitialTouchSlop:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v6

    neg-float v4, v4

    invoke-virtual {v6, v4, v4}, Lcom/motorola/camera/SecureDataHelper;->inset(FF)V

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v7, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v4, v7}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_25

    :goto_a
    return v16

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v4, :cond_26

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v8, 0x5

    invoke-direct {v4, v0, v8}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_26
    iput-wide v6, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->performTouchDown:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v4, :cond_27

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v6, 0x2

    invoke-direct {v4, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_27
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    move/from16 v4, v16

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    sget v6, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTapTimeout:I

    int-to-long v6, v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v3, :cond_28

    invoke-virtual {v1, v15}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-virtual {v13, v15}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v0, v0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v2, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-virtual {v12, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_28
    return v5
.end method

.method public final postEndLongPressRunnable(J)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_0
    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEndLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeTapCallback()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForTap:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mFlags:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPressedState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasPerformedLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHasPerformedDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
