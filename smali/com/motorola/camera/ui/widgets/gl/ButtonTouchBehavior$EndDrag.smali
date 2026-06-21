.class public final Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateDrawableState()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mTouchUp:Landroid/graphics/PointF;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onTouchUp(Landroid/graphics/PointF;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onTouchDown(JLandroid/graphics/PointF;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iget-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onSingleTap(Landroid/graphics/PointF;JJ)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onLongPress(Landroid/graphics/PointF;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateDrawableState()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;-><init>(Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPendingCheckForLongPress:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mPressedState:I

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mLongPressTimeout:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mRawTouchLoc:Landroid/graphics/PointF;

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onLongPress(Landroid/graphics/PointF;Z)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedLongPress:Z

    :cond_2
    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior$EndDrag;->this$0:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mOnDownTime:J

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mEventTime:J

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;JJZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->mHasPerformedDrag:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
