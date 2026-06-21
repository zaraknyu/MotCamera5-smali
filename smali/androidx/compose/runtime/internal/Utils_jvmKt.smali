.class public abstract Landroidx/compose/runtime/internal/Utils_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final emptyThreadMap:Landroidx/compose/runtime/internal/ThreadMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/internal/ThreadMap;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/internal/ThreadMap;-><init>(I[J[Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/internal/Utils_jvmKt;->emptyThreadMap:Landroidx/compose/runtime/internal/ThreadMap;

    return-void
.end method

.method public static final bitsForSlot(II)I
    .locals 0

    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static final currentThreadId()J
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final invokeComposable(Landroidx/compose/runtime/ComposerImpl;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;
    .locals 4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v0, p1, v2, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    iput-object p1, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->_block:Ljava/lang/Object;

    if-nez v2, :cond_6

    iget-boolean p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->tracked:Z

    if-eqz p0, :cond_6

    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    :cond_2
    iput-object p1, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    :cond_3
    iget-object p0, v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->scopes:Ljava/util/ArrayList;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge p2, v1, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2, p1}, Landroidx/compose/runtime/CompositionImpl;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return-object v0
.end method

.method public static final replacableWith(Landroidx/compose/runtime/RecomposeScopeImpl;Landroidx/compose/runtime/RecomposeScopeImpl;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->getValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    iget-object p1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/Anchor;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
