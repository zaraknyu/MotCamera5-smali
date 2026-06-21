.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageButton;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;->f$0:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent$$ExternalSyntheticLambda23;->f$0:Landroid/widget/ImageButton;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
