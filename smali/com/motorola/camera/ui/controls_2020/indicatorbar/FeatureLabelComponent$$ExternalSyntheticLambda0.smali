.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const v0, 0x7f080207

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1202d1

    goto :goto_0

    :cond_1
    const v0, 0x7f1202d0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/FeatureLabelComponent;->labelTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
