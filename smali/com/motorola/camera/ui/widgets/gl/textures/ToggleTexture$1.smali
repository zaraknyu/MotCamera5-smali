.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$end:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->$r8$classId:I

    const/16 p3, 0x13

    invoke-direct {p0, p3}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->val$end:F

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateOutlineSize(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->val$end:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->val$end:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->val$end:F

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->updateOutlineSize(F)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
