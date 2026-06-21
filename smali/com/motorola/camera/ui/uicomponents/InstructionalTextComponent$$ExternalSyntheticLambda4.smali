.class public final synthetic Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0400

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a026c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0464

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/RotateLayout;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
