.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public dragDistance:F

.field public move:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDragApplyValue(F)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v3, p1

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    const/4 v4, 0x1

    if-nez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x40800000    # 4.0f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mDensity:F

    mul-float/2addr v5, v3

    cmpl-float p1, p1, v5

    if-lez p1, :cond_0

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    if-eqz p0, :cond_1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->limitMovePos()V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_1
    return-void
.end method

.method public final onDragEnd(F)V
    .locals 0

    return-void
.end method

.method public final onDragStart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->dragDistance:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture$2;->move:Z

    return-void
.end method
