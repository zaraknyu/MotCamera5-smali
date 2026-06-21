.class public final Lh/B;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/X;

.field public b:Ljava/io/File;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Iterator;

.field public e:Lc/s1;

.field public f:Z

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lh/C;

.field public i:I


# direct methods
.method public constructor <init>(Lh/C;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lh/B;->h:Lh/C;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lh/B;->g:Ljava/lang/Object;

    iget p1, p0, Lh/B;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lh/B;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lh/B;->h:Lh/C;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lh/C;->a(Lc/X;ZLjava/io/File;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
