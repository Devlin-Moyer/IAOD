from django.db import models


class Agamp4(models.Model):
    short_seq = models.CharField(max_length=42, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=20, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=20, blank=True, null=True)
    intron_id = models.CharField(primary_key=True, max_length=70)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.IntegerField(blank=True, null=True)
    tds = models.CharField(max_length=4, blank=True, null=True)
    up_seq = models.CharField(max_length=80, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=80, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=30, blank=True, null=True)
    trans_id = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'AgamP4'

class Grch38(models.Model):
    short_seq = models.CharField(max_length=42, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=20, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=20, blank=True, null=True)
    intron_id = models.CharField(primary_key=True, max_length=70)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.IntegerField(blank=True, null=True)
    tds = models.CharField(max_length=4, blank=True, null=True)
    up_seq = models.CharField(max_length=80, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=80, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=30, blank=True, null=True)
    trans_id = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'GRCh38'

class Tair10(models.Model):
    short_seq = models.CharField(max_length=42, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=20, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=20, blank=True, null=True)
    intron_id = models.CharField(primary_key=True, max_length=70)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.IntegerField(blank=True, null=True)
    tds = models.CharField(max_length=4, blank=True, null=True)
    up_seq = models.CharField(max_length=80, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=80, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=30, blank=True, null=True)
    trans_id = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'TAIR10'


class Orthologs(models.Model):
    cluster = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'orthologs'


class U12S(models.Model):
    short_seq = models.CharField(max_length=42, blank=True, null=True)
    tax_name = models.CharField(max_length=30, blank=True, null=True)
    com_name = models.CharField(max_length=20, blank=True, null=True)
    genome = models.CharField(max_length=15, blank=True, null=True)
    score = models.FloatField(blank=True, null=True)
    intron_class = models.CharField(max_length=20, blank=True, null=True)
    intron_id = models.CharField(primary_key=True, max_length=70)
    chromosome = models.CharField(max_length=20, blank=True, null=True)
    start = models.IntegerField(blank=True, null=True)
    stop = models.IntegerField(blank=True, null=True)
    length = models.IntegerField(blank=True, null=True)
    strand = models.CharField(max_length=1, blank=True, null=True)
    intron_rank = models.IntegerField(blank=True, null=True)
    phase = models.IntegerField(blank=True, null=True)
    tds = models.CharField(max_length=4, blank=True, null=True)
    up_seq = models.CharField(max_length=80, blank=True, null=True)
    branch_seq = models.CharField(max_length=50, blank=True, null=True)
    down_seq = models.CharField(max_length=80, blank=True, null=True)
    full_seq = models.TextField(blank=True, null=True)
    gene_symbol = models.TextField(blank=True, null=True)
    gene_id = models.CharField(max_length=30, blank=True, null=True)
    trans_id = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'u12s'
