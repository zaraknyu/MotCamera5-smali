.class public final synthetic Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$7:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/camera/ui/compose/composable/TwoButtonsStackedDialogKt$$ExternalSyntheticLambda0;->f$6:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;->TwoButtonsStackedDialog(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
