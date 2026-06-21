.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->refreshUIAnimation$1()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->finishUpdateManager()V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120175

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
