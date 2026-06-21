.class public final Lc/j;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lc/q;

.field public c:I


# direct methods
.method public constructor <init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/j;->b:Lc/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/j;->a:Ljava/lang/Object;

    iget p1, p0, Lc/j;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/j;->c:I

    iget-object p1, p0, Lc/j;->b:Lc/q;

    invoke-static {p1, p0}, Lc/q;->a(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
