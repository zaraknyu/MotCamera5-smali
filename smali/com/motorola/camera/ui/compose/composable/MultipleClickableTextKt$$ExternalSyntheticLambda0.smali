.class public final synthetic Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Landroidx/compose/ui/text/SpanStyle;

.field public final synthetic f$4:Landroidx/compose/ui/text/SpanStyle;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/Map;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/SpanStyle;

    iput-object p5, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/text/SpanStyle;

    iput p6, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/SpanStyle;

    iput-object p4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/text/SpanStyle;

    iput-object p5, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput p6, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget-object v1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/SpanStyle;

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/text/SpanStyle;

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;->HighlightedText(Ljava/lang/String;Ljava/util/List;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$5:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v7

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/SpanStyle;

    iget-object v5, p0, Lcom/motorola/camera/ui/compose/composable/MultipleClickableTextKt$$ExternalSyntheticLambda0;->f$4:Landroidx/compose/ui/text/SpanStyle;

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;->MultipleClickableText(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/Map;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
