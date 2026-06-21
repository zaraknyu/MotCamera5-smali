.class public final Landroidx/media3/datasource/DefaultHttpDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# instance fields
.field public bytesRead:J

.field public bytesToRead:J

.field public final connectTimeoutMillis:I

.field public connection:Ljava/net/HttpURLConnection;

.field public dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final defaultRequestProperties:Lcom/tinder/StateMachine;

.field public inputStream:Ljava/io/InputStream;

.field public final readTimeoutMillis:I

.field public final requestProperties:Lcom/tinder/StateMachine;

.field public responseCode:I

.field public transferStarted:Z


# direct methods
.method public constructor <init>(IILcom/tinder/StateMachine;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    iput p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    iput p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    iput-object p3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lcom/tinder/StateMachine;

    new-instance p1, Lcom/tinder/StateMachine;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/tinder/StateMachine;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void

    :goto_1
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget-boolean v3, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    throw v2
.end method

.method public final closeConnectionQuietly()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DefaultHttpDataSource"

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/datasource/DefaultHttpDataSource$NullFilteringHeadersMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->defaultRequestProperties:Lcom/tinder/StateMachine;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tinder/StateMachine;->getSnapshot()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->requestProperties:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/tinder/StateMachine;->getSnapshot()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p10

    if-eqz p10, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/util/Map$Entry;

    invoke-interface {p10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-virtual {p1, v0, p10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    const-wide/16 v0, 0x0

    cmp-long p0, p4, v0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_2

    cmp-long p0, p6, v0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p10, "bytes="

    invoke-direct {p0, p10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p10, "-"

    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p10, p6, v0

    if-eqz p10, :cond_3

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    const-string p4, "Range"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p8, :cond_5

    const-string p0, "gzip"

    goto :goto_2

    :cond_5
    const-string p0, "identity"

    :goto_2
    const-string p4, "Accept-Encoding"

    invoke-virtual {p1, p4, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x1

    if-eqz p3, :cond_6

    move p4, p0

    goto :goto_3

    :cond_6
    const/4 p4, 0x0

    :goto_3
    invoke-virtual {p1, p4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget p4, Landroidx/media3/datasource/DataSpec;->$r8$clinit:I

    if-eq p2, p0, :cond_9

    const/4 p0, 0x2

    if-eq p2, p0, :cond_8

    const/4 p0, 0x3

    if-ne p2, p0, :cond_7

    const-string p0, "HEAD"

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    const-string p0, "POST"

    goto :goto_4

    :cond_9
    const-string p0, "GET"

    :goto_4
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    array-length p0, p3

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :cond_a
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public final open(Landroidx/media3/datasource/DataSpec;)J
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    iput-wide v12, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    invoke-virtual {v1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing()V

    const/4 v14, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroidx/media3/datasource/DataSpec;->httpMethod:I

    iget-object v4, v0, Landroidx/media3/datasource/DataSpec;->httpBody:[B

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v7, v0, Landroidx/media3/datasource/DataSpec;->length:J

    iget v9, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    and-int/2addr v9, v14

    if-ne v9, v14, :cond_0

    move v9, v14

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v11, v0, Landroidx/media3/datasource/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Landroidx/media3/datasource/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->length:J

    iput-object v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    iget v7, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const-string v8, "Content-Range"

    const/16 v9, 0xc8

    const-wide/16 v10, -0x1

    if-lt v7, v9, :cond_1

    const/16 v15, 0x12b

    if-le v7, v15, :cond_2

    :cond_1
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v7, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v7, v9, :cond_3

    cmp-long v7, v3, v12

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-wide v3, v12

    :goto_1
    const-string v7, "Content-Encoding"

    invoke-virtual {v2, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    cmp-long v9, v5, v10

    if-eqz v9, :cond_4

    iput-wide v5, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto/16 :goto_5

    :cond_4
    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    const-string v8, "Inconsistent headers ["

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v15, "]"

    move-wide/from16 v16, v10

    const-string v10, "HttpUtil"

    if-nez v9, :cond_5

    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v24, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v24

    goto :goto_2

    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected Content-Length ["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x2

    :try_start_2
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1

    move-object v11, v15

    add-long v14, v20, v22

    cmp-long v18, v12, v18

    if-gez v18, :cond_6

    move-wide v12, v14

    goto :goto_3

    :cond_6
    cmp-long v18, v12, v14

    if-eqz v18, :cond_7

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-object v11, v15

    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected Content-Range ["

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    cmp-long v5, v12, v16

    if-eqz v5, :cond_8

    sub-long v10, v12, v3

    goto :goto_4

    :cond_8
    move-wide/from16 v10, v16

    :goto_4
    iput-wide v10, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_5

    :cond_9
    iput-wide v5, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    :goto_5
    const/16 v5, 0x7d0

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v7, :cond_a

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v6, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-direct {v2, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    const/4 v9, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v9, 0x1

    goto :goto_7

    :goto_6
    iput-boolean v9, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    :try_start_5
    invoke-virtual {v1, v3, v4}, Landroidx/media3/datasource/DefaultHttpDataSource;->skipFully(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    iget-wide v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_4
    move-exception v0

    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    instance-of v1, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_b
    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/4 v9, 0x1

    invoke-direct {v1, v0, v5, v9}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v1

    :goto_7
    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    new-instance v1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, v5, v9}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw v1

    :goto_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    iget v10, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    const/16 v11, 0x1a0

    if-ne v10, v11, :cond_f

    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_START_AND_END:Ljava/util/regex/Pattern;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-wide/from16 v12, v16

    const/4 v9, 0x1

    goto :goto_9

    :cond_c
    sget-object v10, Landroidx/media3/datasource/HttpUtil;->CONTENT_RANGE_WITH_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    const/4 v9, 0x1

    if-eqz v10, :cond_d

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_9

    :cond_d
    move-wide/from16 v12, v16

    :goto_9
    cmp-long v3, v3, v12

    if-nez v3, :cond_f

    iput-boolean v9, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->transferStarted:Z

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    cmp-long v0, v5, v16

    if-eqz v0, :cond_e

    return-wide v5

    :cond_e
    return-wide v18

    :cond_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_6
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    goto :goto_a

    :cond_10
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    :catch_5
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    :goto_a
    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    iget v0, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    if-ne v0, v11, :cond_11

    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v1, v1, Landroidx/media3/datasource/DefaultHttpDataSource;->responseCode:I

    invoke-direct {v2, v1, v0, v7}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V

    throw v2

    :catch_6
    move-exception v0

    invoke-virtual {v1}, Landroidx/media3/datasource/DefaultHttpDataSource;->closeConnectionQuietly()V

    const/4 v9, 0x1

    invoke-static {v9, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(ILjava/io/IOException;)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v0

    throw v0
.end method

.method public final read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-wide v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->bytesRead:J

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 p1, 0x2

    invoke-static {p1, p0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->createForIOException(ILjava/io/IOException;)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p0

    throw p0
.end method

.method public final skipFully(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Landroidx/media3/datasource/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    invoke-virtual {p0, v4}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {p0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 p2, 0x7d0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;II)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
