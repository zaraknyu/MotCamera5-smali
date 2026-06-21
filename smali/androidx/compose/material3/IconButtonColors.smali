.class public final Landroidx/compose/material3/IconButtonColors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final containerColor:J

.field public final contentColor:J

.field public final disabledContainerColor:J

.field public final disabledContentColor:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    iput-wide p7, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    return-void
.end method

.method public static copy-jRlVdoo$default(Landroidx/compose/material3/IconButtonColors;JJ)Landroidx/compose/material3/IconButtonColors;
    .locals 9

    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    iget-wide v5, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    const-wide/16 v3, 0x10

    cmp-long v0, p1, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    :goto_0
    cmp-long v0, p3, v3

    if-eqz v0, :cond_1

    :goto_1
    move-wide v7, p3

    goto :goto_2

    :cond_1
    iget-wide p3, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    goto :goto_1

    :goto_2
    new-instance v0, Landroidx/compose/material3/IconButtonColors;

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroidx/compose/material3/IconButtonColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/IconButtonColors;

    iget-wide v2, p1, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    iget-wide v4, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    iget-wide p0, p1, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget v0, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    iget-wide v0, p0, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
