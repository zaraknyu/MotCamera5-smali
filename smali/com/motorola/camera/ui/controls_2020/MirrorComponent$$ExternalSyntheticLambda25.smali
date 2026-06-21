.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda25;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessState:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
