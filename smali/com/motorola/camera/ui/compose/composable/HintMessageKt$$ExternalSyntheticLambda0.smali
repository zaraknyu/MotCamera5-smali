.class public final synthetic Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:F

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$2:F

    iput p5, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v4

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$2:F

    iget v5, p0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;->f$4:I

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;->HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
