.class public final Le/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:J

.field public static final d:Le/o0;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x20

    shl-long v0, v1, v0

    const-wide v5, 0xffffffffL

    and-long v2, v3, v5

    or-long/2addr v0, v2

    sput-wide v0, Le/o0;->c:J

    new-instance v2, Le/o0;

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v6, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    filled-new-array {v3, v4, v5, v6}, [Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Le/o0;-><init>(Ljava/util/List;Z)V

    sput-object v2, Le/o0;->d:Le/o0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/o0;->a:Ljava/util/List;

    iput-boolean p2, p0, Le/o0;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le/o0;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Le/o0;

    iget-object v0, p0, Le/o0;->a:Ljava/util/List;

    iget-object v1, p1, Le/o0;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Le/o0;->b:Z

    iget-boolean p1, p1, Le/o0;->b:Z

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Le/o0;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Le/o0;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointAnimation(targetPoints="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/o0;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", animated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Le/o0;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
