.class public final Lcom/motorola/camera/thumbnail/ThumbnailKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDateModified:J

.field public final mDateTaken:J

.field public final mFileName:Ljava/lang/String;

.field public final mIsOverrideSize:Z

.field public final mOrientation:I

.field public final mSupportMinorKey:Z

.field public final mTargetHeight:I

.field public final mTargetWidth:I

.field public final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\d+_\\d+_\\d+_\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mFileName:Ljava/lang/String;

    iput p3, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    iput p4, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    iput p5, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    iput-wide p6, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    iput-wide p8, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    iput-boolean p10, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    iput-boolean p11, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mFileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    iget v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    iget v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    iget v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    iget-wide v2, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    iget-wide v2, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    iget-boolean v1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    iget-boolean p1, p1, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getMajorCacheKey()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    iget v3, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMinorCacheKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    iget p0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result p0

    goto :goto_3

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :goto_3
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheKey{mUri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mTargetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDateTaken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDateModified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mDateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportMinorKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mSupportMinorKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsOverrideSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/thumbnail/ThumbnailKey;->mIsOverrideSize:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
