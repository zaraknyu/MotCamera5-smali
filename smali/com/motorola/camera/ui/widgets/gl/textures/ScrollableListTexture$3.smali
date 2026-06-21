.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateScrollPosition()V

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showLimitingGlow(FZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    neg-float p1, p1

    invoke-virtual {v0, v1, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateScrollPosition()V

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->showLimitingGlow(FZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragEnd(F)V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/4 v1, 0x7

    invoke-direct {v4, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    const p0, 0x4185999a    # 16.7f

    mul-float v7, p1, p0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;

    const/16 v1, 0x8

    invoke-direct {v4, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$13;-><init>(ILjava/lang/Object;)V

    const p0, 0x4185999a    # 16.7f

    mul-float v7, p1, p0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p0, v3, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/BaseInterpolator;

    iget p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDragStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
