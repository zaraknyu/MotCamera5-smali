.class public abstract Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/zza;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    if-eqz v1, :cond_23

    new-instance v3, Lcom/google/android/gms/tasks/zza;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/tasks/zza;-><init>(IZ)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "/[*"

    if-ge v6, v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x66

    if-eqz v6, :cond_22

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v10, v9}, Landroidx/media3/extractor/text/pgs/PgsParser;->findAlias(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/high16 v13, -0x80000000

    if-nez v10, :cond_1

    new-instance v10, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v0, v13}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    new-instance v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v0, v9, v12}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    :cond_1
    iget-object v0, v10, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    iget-object v9, v10, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/internal/xmp/options/AliasOptions;

    new-instance v14, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v14, v0, v13}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v14}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    new-instance v13, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    iget-object v10, v10, Lcom/adobe/internal/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0, v12}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    iput-boolean v12, v13, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->alias:Z

    iget v0, v9, Lcom/adobe/internal/xmp/options/Options;->options:I

    iput v0, v13, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    invoke-virtual {v3, v13}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    const-string v10, "[?xml:lang=\'x-default\']"

    invoke-direct {v0, v10, v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    iput-boolean v12, v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->alias:Z

    iget v9, v9, Lcom/adobe/internal/xmp/options/Options;->options:I

    iput v9, v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x200

    invoke-virtual {v9, v0}, Lcom/adobe/internal/xmp/options/Options;->getOption(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    const-string v10, "[1]"

    invoke-direct {v0, v10, v11}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    iput-boolean v12, v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->alias:Z

    iget v9, v9, Lcom/adobe/internal/xmp/options/Options;->options:I

    iput v9, v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->aliasForm:I

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    :cond_3
    :goto_1
    move v0, v4

    move v9, v0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_21

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x2f

    const-string v14, "Empty XMPPath segment"

    if-ne v10, v13, :cond_5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v14, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x2a

    const/16 v15, 0x5b

    if-ne v10, v13, :cond_7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v13, 0x6

    if-eq v10, v15, :cond_a

    move v0, v6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    if-eq v0, v6, :cond_9

    new-instance v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v12}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move v4, v0

    move/from16 v16, v12

    move v0, v6

    move v6, v4

    goto/16 :goto_d

    :cond_9
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v14, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_a
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    const/4 v5, 0x0

    const/16 v4, 0x30

    if-gt v4, v14, :cond_d

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v16, v12

    const/16 v12, 0x39

    if-gt v14, v12, :cond_c

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v10, v14, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v4, v14, :cond_b

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v14, v12, :cond_b

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    new-instance v4, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v4, v5, v11}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move/from16 v17, v9

    move-object v9, v4

    move/from16 v4, v17

    goto/16 :goto_c

    :cond_c
    :goto_7
    move v4, v10

    goto :goto_8

    :cond_d
    move/from16 v16, v12

    goto :goto_7

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_e

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v15, :cond_e

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x3d

    if-eq v12, v14, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_20

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v15, :cond_10

    const-string v10, "[last()"

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    new-instance v10, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v10, v5, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move-object/from16 v17, v10

    move v10, v4

    move v4, v9

    move-object/from16 v9, v17

    goto :goto_c

    :cond_f
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_10
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x27

    if-eq v0, v9, :cond_12

    const/16 v9, 0x22

    if-ne v0, v9, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    :goto_9
    add-int/lit8 v9, v4, 0x2

    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_15

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v0, :cond_14

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v12, v14, :cond_15

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v0, :cond_13

    goto :goto_b

    :cond_13
    move v9, v12

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_1f

    add-int/lit8 v0, v9, 0x1

    new-instance v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v9, v5, v13}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    move/from16 v17, v10

    move v10, v0

    move/from16 v0, v17

    :goto_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v10, v5, :cond_1e

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v15, :cond_1e

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    move v6, v10

    :goto_d
    iget v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->kind:I

    const/4 v10, 0x2

    const/16 v12, 0x3f

    const-string v14, "Only xml:lang allowed with \'@\'"

    const/16 v15, 0x40

    move/from16 v11, v16

    if-ne v5, v11, :cond_1a

    iget-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v15, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "?"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v11, "?xml:lang"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_e

    :cond_16
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v14, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_17
    :goto_e
    iget-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v12, :cond_18

    add-int/lit8 v0, v0, 0x1

    iput v10, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->kind:I

    :cond_18
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    :cond_19
    const/4 v5, 0x5

    const/4 v13, 0x1

    goto :goto_10

    :cond_1a
    const/4 v11, 0x0

    if-ne v5, v13, :cond_19

    iget-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v15, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "[?"

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const-string v10, "[?xml:lang="

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    invoke-direct {v0, v14, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1c
    :goto_f
    iget-object v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->name:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v12, :cond_1d

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x5

    iput v5, v9, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->kind:I

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto :goto_10

    :cond_1d
    const/4 v5, 0x5

    :goto_10
    invoke-virtual {v3, v9}, Lcom/google/android/gms/tasks/zza;->add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V

    move v9, v4

    move v4, v11

    move v12, v13

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_1e
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1f
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_20
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_21
    return-object v3

    :cond_22
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_23
    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static verifyQualName(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x66

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v0, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string v0, "Unknown namespace prefix for qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string v0, "Ill-formed qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/adobe/internal/xmp/impl/Utils;->xmlNameStartChars:[Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/Utils;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/Utils;->isNameChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string v0, "Bad XML name"

    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    return-void
.end method

.method public static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x65

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    sget-object v2, Lcom/adobe/internal/xmp/XMPMetaFactory;->schema:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {v2, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Schema namespace URI and prefix mismatch"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Unknown schema namespace prefix"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Unregistered schema namespace URI"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Top level name must be simple"

    invoke-direct {p0, p1, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Top level name must not be a qualifier"

    invoke-direct {p0, p1, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/internal/xmp/XMPException;

    const-string p1, "Schema namespace URI is required"

    invoke-direct {p0, p1, v1}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
