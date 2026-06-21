.class public abstract Landroidx/compose/ui/unit/TextUnitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getSp(D)J
    .locals 2

    const-wide v0, 0x100000000L

    double-to-float p0, p0

    .line 1
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getSp(I)J
    .locals 2

    const-wide v0, 0x100000000L

    int-to-float p0, p0

    .line 2
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final pack(FJ)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long p0, p1, v0

    sget-object p2, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    return-wide p0
.end method
