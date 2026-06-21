.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->videoIdle:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->videoIdle:Z

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
