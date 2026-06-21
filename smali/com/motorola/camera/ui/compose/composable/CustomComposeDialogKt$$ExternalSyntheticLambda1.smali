.class public final synthetic Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p9, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$8:I

    iput p10, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$9:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$8:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v9

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$6:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v10, p0, Lcom/motorola/camera/ui/compose/composable/CustomComposeDialogKt$$ExternalSyntheticLambda1;->f$9:I

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;->CustomComposeDialog(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
