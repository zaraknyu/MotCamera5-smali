.class public final Landroidx/core/provider/FontRequestWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$request:Ljava/lang/Object;

.field public final synthetic val$style:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;II)V
    .locals 0

    iput p5, p0, Landroidx/core/provider/FontRequestWorker$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Ljava/lang/Object;

    iput p4, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/core/provider/FontRequestWorker$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget p0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    invoke-static {v0, v1, v2, p0}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Ljava/lang/Object;

    check-cast v0, Landroidx/core/provider/FontRequest;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    invoke-static {v2, p0, v0, v1}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
