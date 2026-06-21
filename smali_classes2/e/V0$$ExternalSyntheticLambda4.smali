.class public final synthetic Le/V0$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Le/X;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Le/X;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/V0$$ExternalSyntheticLambda4;->f$0:Le/X;

    iput p2, p0, Le/V0$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Le/V0$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg/a0;

    invoke-direct {p1}, Lg/a0;-><init>()V

    iget-object v0, p0, Le/V0$$ExternalSyntheticLambda4;->f$0:Le/X;

    iget-object v1, v0, Le/X;->a:Lkotlin/jvm/functions/Function2;

    iget v2, p0, Le/V0$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Le/V0$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Lh/p$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3, v4}, Lh/p$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Le/K0;

    invoke-direct {v1, v0, v2, p0, p1}, Le/K0;-><init>(Le/X;IILg/a0;)V

    return-object v1
.end method
