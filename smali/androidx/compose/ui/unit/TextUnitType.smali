.class public final Landroidx/compose/ui/unit/TextUnitType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final type:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    return-void
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/unit/TextUnitType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/unit/TextUnitType;

    iget-wide v0, p1, Landroidx/compose/ui/unit/TextUnitType;->type:J

    iget-wide p0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Unspecified"

    return-object p0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Sp"

    return-object p0

    :cond_1
    const-wide v0, 0x200000000L

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Em"

    return-object p0

    :cond_2
    const-string p0, "Invalid"

    return-object p0
.end method
