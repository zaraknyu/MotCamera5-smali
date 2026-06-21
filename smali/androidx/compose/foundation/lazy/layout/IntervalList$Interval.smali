.class public final Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final size:I

.field public final startIndex:I

.field public final value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;


# direct methods
.method public constructor <init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "startIndex should be >= 0"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    if-lez p2, :cond_1

    return-void

    :cond_1
    const-string/jumbo p0, "size should be > 0"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    return-void
.end method
