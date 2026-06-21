.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $contentAlignment:Landroidx/compose/ui/BiasAlignment;

.field public final synthetic $contentKey:Lkotlin/jvm/functions/Function1;

.field public final synthetic $label:Ljava/lang/String;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $targetState:Ljava/lang/Object;

.field public final synthetic $transitionSpec:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$targetState:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$transitionSpec:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$contentAlignment:Landroidx/compose/ui/BiasAlignment;

    iput-object p5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$label:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$contentKey:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const p1, 0x186181

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v8

    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$targetState:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$transitionSpec:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$contentAlignment:Landroidx/compose/ui/BiasAlignment;

    iget-object v4, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$label:Ljava/lang/String;

    iget-object v5, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$contentKey:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
