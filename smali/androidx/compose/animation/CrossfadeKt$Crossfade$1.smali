.class public final Landroidx/compose/animation/CrossfadeKt$Crossfade$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationSpec:Landroidx/compose/animation/core/TweenSpec;

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $label:Ljava/lang/String;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $targetState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$targetState:Ljava/lang/Boolean;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$animationSpec:Landroidx/compose/animation/core/TweenSpec;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$label:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const/16 p1, 0x6c01

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$targetState:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$animationSpec:Landroidx/compose/animation/core/TweenSpec;

    iget-object v3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$label:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Boolean;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
