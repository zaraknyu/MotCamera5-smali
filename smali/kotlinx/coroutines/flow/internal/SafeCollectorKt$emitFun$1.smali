.class public final synthetic Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/flow/FlowCollector;

    const-string v3, "emit"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;->INSTANCE:Lkotlinx/coroutines/flow/internal/SafeCollectorKt$emitFun$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
