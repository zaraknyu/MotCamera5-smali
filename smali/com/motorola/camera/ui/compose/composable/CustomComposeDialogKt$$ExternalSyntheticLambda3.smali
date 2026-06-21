.class public final synthetic Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->ControlLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ListStateItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->DialogButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
