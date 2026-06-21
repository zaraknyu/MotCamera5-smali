.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

.field public final synthetic val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$beginWidth:F

.field public final synthetic val$borderDiff:F

.field public final synthetic val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

.field public final synthetic val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;F)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$borderDiff:F

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$beginWidth:F

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->updateBorderSize(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setTextScale()V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->moveTalkback()V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected$1()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$cell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->setSelected(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void
.end method

.method public final onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorderH:I

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mBorder:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$borderDiff:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$end:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$begin:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v5, v5, v6

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$3;->val$beginWidth:F

    if-gez v5, :cond_0

    add-float/2addr p0, v2

    int-to-float p1, v1

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    return-void

    :cond_0
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr p1, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    int-to-float p0, v1

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_1
    return-void
.end method
