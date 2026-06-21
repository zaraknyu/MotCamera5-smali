.class public final Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mDateModified:J

.field public mDateTaken:J

.field public mFileName:Ljava/lang/String;

.field public mHeight:I

.field public mOrientation:I

.field public mSupportMinorKey:Z

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I

.field public final mUri:Landroid/net/Uri;

.field public mWidth:I

.field public final synthetic this$0:Landroidx/media3/extractor/text/pgs/PgsParser;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/pgs/PgsParser;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->this$0:Landroidx/media3/extractor/text/pgs/PgsParser;

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailWidth:I

    iput p1, p0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailHeight:I

    iput-object p2, p0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final into(Lcom/google/mlkit/common/internal/zzb;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailWidth:I

    iget-object v3, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->this$0:Landroidx/media3/extractor/text/pgs/PgsParser;

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_2

    iget v2, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailHeight:I

    if-ne v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    const-string v4, ".dng"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$8;

    new-instance v4, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v6, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    iget v8, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    iget v9, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    iget-wide v10, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iget-wide v12, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iget-boolean v14, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    const/4 v15, 0x1

    iget-object v5, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    invoke-direct/range {v4 .. v15}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    new-instance v5, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v7, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    iget v8, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailWidth:I

    iget v9, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailHeight:I

    iget v10, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    iget-wide v11, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iget-wide v13, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iget-boolean v15, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v16}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    filled-new-array {v4, v5}, [Lcom/motorola/camera/thumbnail/ThumbnailKey;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Lcom/google/mlkit/common/internal/zzb;[Lcom/motorola/camera/thumbnail/ThumbnailKey;)V

    invoke-static {v3, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->-$$Nest$mrunOnExecutor(Landroidx/media3/extractor/text/pgs/PgsParser;Lcom/motorola/camera/mcf/Mcf$8;)V

    return-void

    :cond_1
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$8;

    new-instance v4, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v6, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailWidth:I

    iget v8, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mThumbnailHeight:I

    iget v9, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    iget-wide v10, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iget-wide v12, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iget-boolean v14, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    const/4 v15, 0x0

    iget-object v5, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    invoke-direct/range {v4 .. v15}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    new-instance v5, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v7, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    iget v8, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    iget v9, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    iget v10, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    iget-wide v11, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iget-wide v13, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iget-boolean v15, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    const/16 v16, 0x1

    iget-object v6, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    invoke-direct/range {v5 .. v16}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    filled-new-array {v4, v5}, [Lcom/motorola/camera/thumbnail/ThumbnailKey;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Lcom/google/mlkit/common/internal/zzb;[Lcom/motorola/camera/thumbnail/ThumbnailKey;)V

    invoke-static {v3, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->-$$Nest$mrunOnExecutor(Landroidx/media3/extractor/text/pgs/PgsParser;Lcom/motorola/camera/mcf/Mcf$8;)V

    return-void

    :cond_2
    :goto_0
    new-instance v2, Lcom/motorola/camera/mcf/Mcf$8;

    new-instance v4, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v6, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mFileName:Ljava/lang/String;

    iget v7, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mWidth:I

    iget v8, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mHeight:I

    iget v9, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mOrientation:I

    iget-wide v10, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateTaken:J

    iget-wide v12, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mDateModified:J

    iget-boolean v14, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mSupportMinorKey:Z

    const/4 v15, 0x1

    iget-object v5, v0, Lcom/motorola/camera/thumbnail/ThumbnailEngine$RequestBuilder;->mUri:Landroid/net/Uri;

    invoke-direct/range {v4 .. v15}, Lcom/motorola/camera/thumbnail/ThumbnailKey;-><init>(Landroid/net/Uri;Ljava/lang/String;IIIJJZZ)V

    filled-new-array {v4}, [Lcom/motorola/camera/thumbnail/ThumbnailKey;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Lcom/google/mlkit/common/internal/zzb;[Lcom/motorola/camera/thumbnail/ThumbnailKey;)V

    invoke-static {v3, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->-$$Nest$mrunOnExecutor(Landroidx/media3/extractor/text/pgs/PgsParser;Lcom/motorola/camera/mcf/Mcf$8;)V

    return-void
.end method
