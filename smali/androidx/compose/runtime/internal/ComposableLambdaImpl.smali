.class public final Landroidx/compose/runtime/internal/ComposableLambdaImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/jvm/functions/Function3;
.implements Lkotlin/jvm/functions/Function4;
.implements Lkotlin/jvm/functions/Function5;
.implements Lkotlin/jvm/functions/Function6;
.implements Lkotlin/jvm/functions/Function7;
.implements Lkotlin/jvm/functions/Function8;
.implements Lkotlin/jvm/functions/Function9;
.implements Lkotlin/jvm/functions/Function10;
.implements Lkotlin/jvm/functions/Function11;
.implements Lkotlin/jvm/functions/Function13;
.implements Lkotlin/jvm/functions/Function14;
.implements Lkotlin/jvm/functions/Function15;
.implements Lkotlin/jvm/functions/Function16;
.implements Lkotlin/jvm/functions/Function17;
.implements Lkotlin/jvm/functions/Function18;
.implements Lkotlin/jvm/functions/Function19;
.implements Lkotlin/jvm/functions/Function20;
.implements Lkotlin/jvm/functions/Function21;


# instance fields
.field public _block:Ljava/lang/Object;

.field public final key:I

.field public scope:Landroidx/compose/runtime/RecomposeScopeImpl;

.field public scopes:Ljava/util/ArrayList;

.field public final tracked:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->key:I

    iput-boolean p2, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->tracked:Z

    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/Object;
    .locals 8

    .line 5
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->key:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    .line 6
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->trackRead(Landroidx/compose/runtime/ComposerImpl;)V

    .line 7
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {v1, v2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-static {v0, v2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    :goto_0
    or-int/2addr p1, v0

    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Function2<@[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v1, 0x2

    .line 12
    const-class v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const-string v4, "invoke"

    const-string v5, "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;"

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 13
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-object p1
.end method

.method public final invoke(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 14
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->key:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    .line 15
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->trackRead(Landroidx/compose/runtime/ComposerImpl;)V

    .line 16
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 17
    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p1

    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p3, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Landroidx/compose/foundation/CanvasKt$Canvas$1;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2, p0, p3}, Landroidx/compose/foundation/CanvasKt$Canvas$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    iput-object v1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)Ljava/lang/Object;
    .locals 3

    .line 22
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->key:I

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    .line 23
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->trackRead(Landroidx/compose/runtime/ComposerImpl;)V

    .line 24
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 25
    invoke-static {v1, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p4

    .line 27
    iget-object v1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Function4<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    invoke-direct {v1, p0, p1, p2, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 29
    iput-object v1, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p3, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(ILandroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)Ljava/lang/Object;
    .locals 9

    .line 30
    iget v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->key:I

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    .line 31
    invoke-virtual {p0, p4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->trackRead(Landroidx/compose/runtime/ComposerImpl;)V

    .line 32
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 34
    invoke-static {v0, v1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->bitsForSlot(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p5

    .line 35
    iget-object v1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type kotlin.Function5<@[ParameterName(name = \"p1\")] kotlin.Any?, @[ParameterName(name = \"p2\")] kotlin.Any?, @[ParameterName(name = \"p3\")] kotlin.Any?, @[ParameterName(name = \"c\")] androidx.compose.runtime.Composer, @[ParameterName(name = \"changed\")] kotlin.Int, kotlin.Any?>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function5;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 37
    invoke-interface/range {v3 .. v8}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    .line 38
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$4;

    move-object v1, p0

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$4;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    invoke-virtual/range {p0 .. p5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final trackRead(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->tracked:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getCurrentRecomposeScope$runtime_release()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    iget v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v0, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->replacableWith(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/RecomposeScopeImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scopes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-static {v2, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->replacableWith(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/RecomposeScopeImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
