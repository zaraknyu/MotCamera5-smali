.class public abstract Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RobolectricImpl:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "robolectric"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/compose/foundation/lazy/layout/PrefetchScheduler_androidKt;->RobolectricImpl:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState$Companion;

    return-void
.end method
