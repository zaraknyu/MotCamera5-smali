.class Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

.field final synthetic val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

.field final synthetic val$retCode:I


# direct methods
.method public constructor <init>(Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;I)V
    .locals 0

    iput-object p1, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

    iput-object p2, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iput p3, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

    iget-object v0, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvWebProtocalRequestManager;

    invoke-static {v0}, Lcom/cdv/effect/io/NvWebProtocalRequestManager;->access$200(Lcom/cdv/effect/io/NvWebProtocalRequestManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iget-wide v1, v1, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remove a non-exist request! id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iget-wide v1, v1, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http Request Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iget-object v0, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_timerTask:Ljava/util/TimerTask;

    :cond_1
    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->this$1:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;

    iget-object v1, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker;->this$0:Lcom/cdv/effect/io/NvWebProtocalRequestManager;

    invoke-static {v1}, Lcom/cdv/effect/io/NvWebProtocalRequestManager;->access$300(Lcom/cdv/effect/io/NvWebProtocalRequestManager;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$request:Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;

    iget-wide v4, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_id:J

    iget v6, p0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Worker$1;->val$retCode:I

    iget-object v7, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_responseData:[B

    iget v8, v0, Lcom/cdv/effect/io/NvWebProtocalRequestManager$Request;->m_responseDataSizeInBytes:I

    invoke-static/range {v1 .. v8}, Lcom/cdv/effect/io/NvWebProtocalRequestManager;->access$400(Lcom/cdv/effect/io/NvWebProtocalRequestManager;JJI[BI)V

    return-void
.end method
