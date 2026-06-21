.class public final Lc/H0;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/M0;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc/M0;

.field public d:I


# direct methods
.method public constructor <init>(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/H0;->c:Lc/M0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/H0;->b:Ljava/lang/Object;

    iget p1, p0, Lc/H0;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/H0;->d:I

    iget-object p1, p0, Lc/H0;->c:Lc/M0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lc/M0;->a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
