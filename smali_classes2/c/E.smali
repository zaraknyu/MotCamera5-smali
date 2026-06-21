.class public final Lc/E;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/G;

.field public b:Landroid/graphics/Bitmap;

.field public c:Ljava/io/File;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lc/G;

.field public f:I


# direct methods
.method public constructor <init>(Lc/G;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/E;->e:Lc/G;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/E;->d:Ljava/lang/Object;

    iget p1, p0, Lc/E;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/E;->f:I

    iget-object p1, p0, Lc/E;->e:Lc/G;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lc/G;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
