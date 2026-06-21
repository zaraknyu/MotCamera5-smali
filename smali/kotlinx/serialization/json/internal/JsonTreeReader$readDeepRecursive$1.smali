.class public final Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic L$0:Lkotlin/DeepRecursiveScopeImpl;

.field public label:I

.field public final synthetic this$0:Landroidx/media3/extractor/mkv/Sniffer;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Landroidx/media3/extractor/mkv/Sniffer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/DeepRecursiveScopeImpl;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {p2, p0, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->this$0:Landroidx/media3/extractor/mkv/Sniffer;

    iget-object v1, v0, Landroidx/media3/extractor/mkv/Sniffer;->scratch:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/GlProgram;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->L$0:Lkotlin/DeepRecursiveScopeImpl;

    invoke-virtual {v1}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v4}, Landroidx/media3/extractor/mkv/Sniffer;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v5, 0x0

    if-nez v3, :cond_3

    invoke-virtual {v0, v5}, Landroidx/media3/extractor/mkv/Sniffer;->readValue(Z)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v6, 0x6

    if-ne v3, v6, :cond_5

    iput v4, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$readDeepRecursive$1;->label:I

    invoke-static {v0, p1, p0}, Landroidx/media3/extractor/mkv/Sniffer;->access$readObject(Landroidx/media3/extractor/mkv/Sniffer;Lkotlin/DeepRecursiveScopeImpl;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_0
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    :cond_5
    const/16 p0, 0x8

    if-ne v3, p0, :cond_6

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/Sniffer;->readArray()Lkotlinx/serialization/json/JsonArray;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Can\'t begin reading element, unexpected token"

    const/4 p1, 0x0

    invoke-static {v1, p0, v5, p1, v6}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw p1
.end method
