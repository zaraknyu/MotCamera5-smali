.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ZeroConstraints:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchStateKt;->ZeroConstraints:J

    return-void
.end method
