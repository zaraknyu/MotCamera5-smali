.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->$r8$classId:I

    const/16 p2, 0x13

    invoke-direct {p0, p2}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
