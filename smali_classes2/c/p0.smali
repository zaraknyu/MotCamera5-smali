.class public final Lc/p0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/r0;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc/r0;

.field public d:I


# direct methods
.method public constructor <init>(Lc/r0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/p0;->c:Lc/r0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/p0;->b:Ljava/lang/Object;

    iget p1, p0, Lc/p0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/p0;->d:I

    iget-object p1, p0, Lc/p0;->c:Lc/r0;

    invoke-virtual {p1, p0}, Lc/r0;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
